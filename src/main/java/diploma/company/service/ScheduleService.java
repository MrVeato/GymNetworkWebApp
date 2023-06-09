package diploma.company.service;

import diploma.company.model.Schedule;
import diploma.company.repository.ScheduleRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScheduleService {
	
	private final ScheduleRepository scheduleRepo;
	
	public ScheduleService(ScheduleRepository scheduleRepo) {
		this.scheduleRepo = scheduleRepo;
	}
	
	public Schedule getSchedule(Long id) {
		return scheduleRepo.getOne(id);
	}
	
	public List<Schedule> findAll() {
		return scheduleRepo.findAll();
	}
	
	public void saveSchedule(Schedule schedule) {
		scheduleRepo.save(schedule);
	}
	
	public List<String> getInstructors() {
		return scheduleRepo.getTrainerNames();
	}
	
	public void removeSchedule(Long id) {
		scheduleRepo.deleteById(id);
	}
	public Schedule findClassById(Long id){
		return scheduleRepo.findById(id).orElse(null);
	}
}
