package yanoll.plsql.mappers;

import java.util.List;
import java.util.Map;

public interface PlsqlMapper {

	public List<Integer> get_monthly_booked(Map<String, Object> paramMap);
	
}
