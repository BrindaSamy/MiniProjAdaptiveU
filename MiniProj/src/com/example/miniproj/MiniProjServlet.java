package com.example.miniproj;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.PropertyContainer;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.SortDirection;






@Controller
public class MiniProjServlet
{
	@RequestMapping("/")
	public ModelAndView gotoFull()
	{
		ModelAndView model=new ModelAndView("Full");
		return model;
		
	}
	
	@RequestMapping("/University")
	public ModelAndView gotoUniversity()
	{
		ModelAndView model=new ModelAndView("University");
		return model;
		
	}
	
	@RequestMapping("/Home")
	public ModelAndView gotoHome(HttpServletRequest request)
	{
		
		ModelAndView model=new ModelAndView("Home");
		
		
		return model;
		
	}
	
	
	@RequestMapping(value="/University",method= RequestMethod.POST)
	
	public ModelAndView gotoLogin(HttpServletRequest request,HttpSession session)
	{
		System.out.println("hiii");
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		 
		Filter mail=new FilterPredicate("email",FilterOperator.EQUAL, request.getParameter("userName"));
		
		Query q=new Query("Register").setFilter(mail);
		
		PreparedQuery pq=datastore.prepare(q);
		
		Entity disp=pq.asSingleEntity();
		
		//String dispUser=(String) disp.getProperty("email");
		
		
		//System.out.println("welcome"+""+disp.getProperty("email"));
		ModelAndView modelobj=new ModelAndView("University");
		session.setAttribute("disp",disp.getProperty("name"));
		return modelobj;
		
	}
	
	
/*	
	@RequestMapping("/Register")
	
	public ModelAndView gotoRegister()
	{
		ModelAndView modelobj=new ModelAndView("NewUser");
		return modelobj;
		
	}*/
	
@RequestMapping(value="/add",method= {RequestMethod.POST,RequestMethod.GET})
	
	public String gotoLog(HttpServletRequest request, ModelMap model,@ModelAttribute("user_obj") User user_obj)
	{
	
	
        Key registerKey = KeyFactory.createKey("Register", user_obj.getEmail());
        
            Entity register = new Entity("Register", registerKey);
            register.setProperty("name", user_obj.getUserName());
            register.setProperty("email", user_obj.getEmail());
            register.setProperty("password",user_obj.getPassword());

            DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
            datastore.put(register);
    
            
            
		 return "redirect:/";
		
	}
	
	
	
	//@RequestMapping("/Login")
	
	
@RequestMapping("/Navi")
	
	public ModelAndView gotoNavir()
	{
		ModelAndView modelobj=new ModelAndView("Navi");
		return modelobj;
		
	}
@RequestMapping("/Welcome")

public ModelAndView gotoWelcome()
{
	ModelAndView modelobj=new ModelAndView("Welcome");
	return modelobj;
	
}

@RequestMapping("/Explore")

public ModelAndView gotoExplore()
{
	ModelAndView modelobj=new ModelAndView("Explore");
	return modelobj;
	
}


@RequestMapping("/Me")
public ModelAndView gotoMe()
{
	ModelAndView modelobj=new ModelAndView("Me");
	return modelobj;
	
}

@RequestMapping("/Challenges")
public ModelAndView gotoChallenges()
{
	ModelAndView modelobj=new ModelAndView("Challenges");
	return modelobj;
	
}
/*@RequestMapping("/AddChallenges")
public ModelAndView gotoAddChallenges()
{
	ModelAndView modelobj=new ModelAndView("AddChallenges");
	return modelobj;
	
}*/



//**************************Challenges******************************

@RequestMapping(value="/store",method= {RequestMethod.POST,RequestMethod.GET})

public String gotoChallenge(HttpServletRequest request, ModelMap model,@ModelAttribute("cha_obj1") Challenges cha_obj)
{
	

    Key challengeKey = KeyFactory.createKey("Challenges", cha_obj.getChallenge_ID());
    
        Entity challenge = new Entity("Challenges", challengeKey);
        challenge.setProperty("cha_ID",cha_obj.getChallenge_ID());
       
        challenge.setProperty("title",cha_obj.getTitle());
        challenge.setProperty("badges", cha_obj.getBadges());
        challenge.setProperty("creator",cha_obj.getCreator());

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(challenge);

        availableChallenges(request, model); 
        
	 return "redirect:Challenges";
	
	 
}

@RequestMapping(value="ViewChallenges",method= {RequestMethod.POST,RequestMethod.GET})
public String  availableChallenges(HttpServletRequest request,ModelMap modelobj){
	
	//String title=request.getParameter("title");
	System.out.println("view here.");
	//Query query_obj=new Query("Challenges").addSort("title",SortDirection.DESCENDING);
	//List<Challenges> challenges=datastore.prepare(query_obj).asList(FetchOptions.Builder.withLimit(10));
	//modelobj.addAttribute("List",  challenges);
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	Query query = 
                  new Query("Challenges");
        List<Entity> challenges = 
                  datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));
    
        modelobj.addAttribute("List", challenges);	//request.setAttribute("List",challenges);
        
        
   return "View";
   //System.out.println("hwllo"+challenges);
}

/**
 * @param request
 * @param modelobj
 * @return
 */
@RequestMapping(value="RemoveChallenges",method= {RequestMethod.POST,RequestMethod.GET})
public String  removeChallenges(HttpServletRequest request,ModelMap model){
	
	
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	
	Query query=new Query("Challenges");
	
	PreparedQuery pq=datastore.prepare(query);
	
	//Entity disp=pq.asSingleEntity();
	
	 List<Entity> challenges = 
             datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));

   
	//System.out.println("entity"+challenges);
	 model.addAttribute("dispTitle",challenges);	
	 
	 return "Delete";
}

@RequestMapping(value="searchChallenges",method= {RequestMethod.POST,RequestMethod.GET})
public String  searchChallenges(HttpServletRequest request,ModelMap modelobj){
	
	
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Filter title=new FilterPredicate("title",FilterOperator.EQUAL, request.getParameter("chalName"));
	
	Query query=new Query("Challenges").setFilter(title);
	
	PreparedQuery pq=datastore.prepare(query);
	
	//Entity disp=pq.asSingleEntity();
	
	 List<Entity> challenges = 
             datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));

  // modelobj.addAttribute("List", challenges);
	/*Query query_obj=new Query("Challenges").addFilter("title", FilterOperator.EQUAL, title);
	
	
	
	PreparedQuery pq=datastore.prepare(query_obj);
	Entity challenge=pq.asSingleEntity();*/
	System.out.println("entity"+challenges);
	modelobj.addAttribute("challengesList",challenges);
	
	

	
	return "Search";
}
}

