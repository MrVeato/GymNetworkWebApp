package diploma.company.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "classes_users")
@Entity
public class ClassRegister {
	
	@Column(name = "ID", nullable = false)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String email;
	
	private Integer contactNumber;
	
	@ManyToOne
	private User user;
	
	@ManyToOne
	private Schedule schedule;
	
}