package inventory.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import inventory.model.Paging;
@Repository
@Transactional(rollbackFor = Exception.class)
public class BaseDAOImpl<E> implements BaseDAO<E> {
    final static Logger log = Logger.getLogger(BaseDAOImpl.class);
	@Autowired
    SessionFactory sessionFactory;//hibernate
    public List<E> findAll(String queryStr, Map<String, Object> mapParams, Paging paging)   {
		log.info("find all record from db");
		StringBuilder queryString = new StringBuilder("");
		
		StringBuilder countQuery = new StringBuilder();
		countQuery.append(" select count(*) from ").append(getGenericName()).append(" as model where model.activeFlag=1");
		//countQuery dùng cho hàm phân trang,đém
		
		queryString.append(" from ").append(getGenericName()).append(" as model where model.activeFlag=1");
		if(queryStr!=null && !queryStr.isEmpty()) {
			queryString.append(queryStr);
			countQuery.append(queryStr);
			
		}
		Query<E> query  = sessionFactory.getCurrentSession().createQuery(queryString.toString());
		//getCurrentSession() thì session sẽ tự động đẩy dữ liệu (flush()) và đóng (close()) session.
		//dùng createQury như để lấy truy vấn va
		
		Query<E> countQ  =  sessionFactory.getCurrentSession().createQuery(countQuery.toString());
		
		if(mapParams!=null && !mapParams.isEmpty()) {
			for(String key : mapParams.keySet()) {//lấy phần string của mapParams
				query.setParameter(key, mapParams.get(key));
			    countQ.setParameter(key,  mapParams.get(key));
			}
		}
		if (paging != null) {
	//0 from model where model.activèlag = 1  limit  0,10
		//trả về
			query.setFirstResult(paging.getOffset());
			query.setMaxResults(paging.getRecordPerPage());
			long totalRecords = (long)countQ.uniqueResult();
			paging.setTotalRows(totalRecords);
		
		}
		log.info( "Query find all ====>" +queryString.toString());
		return query.list();
	} 
    	// TODO Auto-generated method stub
    	/*
	   log.info("find all record from db");// tương đương system.out.p
	   StringBuilder queryString = new StringBuilder("");
	   queryString.append(" from ")
	   .append(getGenericName())
	   .append(" as model where model.activeFlag=1");//dùng lệnh query để lấy ra
	   if (queStr != null && !queStr.isEmpty() ) {
		queryString.append(queStr);
	    }
	   Query<E> query = 
	   if (mapParams != null && !queStr.isEmpty()) {
		for (String key : mapParams.keySet()) {
			quer
		}
	   }
	   
	   log.info( "Query find all ===>" + queryString.toString());
	   return sessionFactory.getCurrentSession().//getCurrentSession() thì session sẽ tự động đẩy dữ liệu (flush()) và đóng (close()) session.
	   createQuery(queryString.toString()).list();//dùng createQury như để lấy truy vấn va
	   //
	    * 
	    */
		
    

	public E findById(Class<E> e, Serializable id) {
		// TODO Auto-generated method stub 
		
		log.info("Find by ID ");
		return sessionFactory.getCurrentSession().get(e, id);
	}

	public List<E> findByProperty(String property, Object value) {
		// TODO Auto-generated method stub
		log.info("Find by property");
		StringBuilder queryString = new StringBuilder();
		queryString.append(" from ").append(getGenericName()).append(" as model where model.activeFlag=1 and model.").append(property).append("=?");// =? chinh la điều kiện để lấy trg đó
	    log.info(" query find by property ===>"+queryString.toString() );
		Query<E> query = sessionFactory.getCurrentSession().createQuery(queryString.toString());//query để lấy điều kiện
	    query.setParameter(0, value);//lấy điều kiện bằng việc setparameter bằng cách lấy điều kiện "value"
	    return query.getResultList();
	
	}
                   
	public void save(E instance) {
		// TODO Auto-generated method stub
		log.info("save instance");
		sessionFactory.getCurrentSession().persist(instance);
	}

	public void update(E instance) {
		// TODO Auto-generated method stub
		log.info("update ");
		sessionFactory.getCurrentSession().merge(instance);
		
	}
	public String getGenericName() {
		String s = getClass().getGenericSuperclass().toString();
		Pattern pattern = Pattern.compile("\\<(.*?)\\>");
		Matcher m = pattern.matcher(s);
		String generic="null";
		if(m.find()) {
			generic = m.group(1);
		}
		return generic;
	}
}
    
