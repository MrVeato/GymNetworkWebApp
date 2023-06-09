package diploma.company.service;

import diploma.company.model.ClassRegister;
import diploma.company.model.Schedule;
import diploma.company.model.User;
import diploma.company.repository.ClassRegisterRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassRegisterService {
	
	private final ClassRegisterRepository classRepo;
	private final ScheduleService scheduleService;
	private final UserService userService;
	
	public ClassRegisterService(ClassRegisterRepository classRepo, ScheduleService scheduleService, UserService userService) {
		this.classRepo = classRepo;
		this.scheduleService = scheduleService;
		this.userService = userService;
	}
	
	public List<ClassRegister> findAll() {
		List<ClassRegister> list = classRepo.findAll();
		return list;
	}
	
	public ClassRegister saveClassRegister(Long id, String username, String email, Integer phone) {
		Schedule schedule = scheduleService.getSchedule(id);
		User user = userService.findUserByUsername(username);
		ClassRegister classRegister = new ClassRegister();
		classRegister.setSchedule(schedule);
		classRegister.setUser(user);
		if (email == null || email.equals("")) {
			email = user.getEmail();
		}
		classRegister.setEmail(email);
		classRegister.setContactNumber(phone);
		return classRepo.save(classRegister);
	}
	public List<ClassRegister> getRegistered(){
		List<ClassRegister> classes = classRepo.findAll();
		return classes;
	}
	
	public void deleteAll(List<ClassRegister> classRegister) {
		classRepo.deleteAll(classRegister);
	}
}

