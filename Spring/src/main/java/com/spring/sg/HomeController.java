package com.spring.sg;

import model.timetable;
import model.timetableDAO;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	//private timetableDAO tdao = new timetableDAO();
	private ArrayList<timetable> lol = new ArrayList<timetable>();
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(
			@RequestParam(value="username", required = true) String username, 
			@RequestParam(value="password", required = true) String password) 
	{
		if(username.toLowerCase().equals("admin")) {
			return "/Admin";
		}
		else if(username.toLowerCase().equals("user")) {
			return "/User";
		}
		else
			return "/home";
	}
	
	@RequestMapping("/submit")
	public String add(
			@RequestParam(value="datetoadd", required = true) String datetoadd, 
			@RequestParam(value="currenttime", required = true) String currenttime,
			@RequestParam(value="duration", required = true) String duration,
			@RequestParam(value="repeatfreq", required = true) String repeatfreq,
			@RequestParam(value="lecturer", required = true) String lecturer,
			@RequestParam(value="attendance", required = true) String attendance,
			@RequestParam(value="compulsory", required = true) String compulsory, 
			@RequestParam(value="venue", required = true) String venue)
	{
		if(!datetoadd.isEmpty() && !currenttime.isEmpty() &&
				!duration.isEmpty() && !repeatfreq.isEmpty() &&
				!lecturer.isEmpty() && !attendance.isEmpty() &&
				!compulsory.isEmpty() && !venue.isEmpty()) {
			timetable tt = new timetable();
			tt.setDatetoadd(datetoadd);
			tt.setCurrenttime(currenttime);
			tt.setDuration(Integer.parseInt(duration));
			tt.setRepeatfreq(Integer.parseInt(repeatfreq));
			tt.setLecturer(lecturer);
			tt.setAttendnace(Integer.parseInt(attendance));
			tt.setCompulsory(Boolean.parseBoolean(compulsory));
			tt.setVenue(venue);
			
			lol.add(tt);
			return "/home";
		}
		else			
			return "/home";
	}
	
	//@RequestMapping("/view");
}
