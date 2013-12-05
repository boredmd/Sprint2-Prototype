package model;

public class timetable {
	private String datetoadd;
	private String currenttime;
	private int duration;
	private int repeatfreq;
	private String lecturer;
	private int attendnace;
	private boolean compulsory;
	private String venue;
	
	public String getDatetoadd() {
		return datetoadd;
	}
	public void setDatetoadd(String datetoadd) {
		this.datetoadd = datetoadd;
	}
	public String getCurrenttime() {
		return currenttime;
	}
	public void setCurrenttime(String currenttime) {
		this.currenttime = currenttime;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getRepeatfreq() {
		return repeatfreq;
	}
	public void setRepeatfreq(int repeatfreq) {
		this.repeatfreq = repeatfreq;
	}
	public String getLecturer() {
		return lecturer;
	}
	public void setLecturer(String lecturer) {
		this.lecturer = lecturer;
	}
	public int getAttendnace() {
		return attendnace;
	}
	public void setAttendnace(int attendnace) {
		this.attendnace = attendnace;
	}
	public boolean isCompulsory() {
		return compulsory;
	}
	public void setCompulsory(boolean compulsory) {
		this.compulsory = compulsory;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
}
