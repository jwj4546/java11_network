package sec1;

public class Application {

	public static void main(String[] args) {
		//1. Connection conn의 url의 주소가 잘못됨(db이름이 없음) -> /kh추가(3306뒤에)
		//2. Query 실행문이 없으므로 query가 실행되지 못한다 query -> String query = select emp_id emp_name*from employee
		//3. ResultSet rs = st.executeUpdate(); 문장에서 executeUpdate(); 메소드는 int를 반환하므로 해당 검색 결과인 ResultSet을 반환받을 수 없음
		//4. while(rs) 문장에서 rs는 다음 레코드를 지칭해야 레코드가 끝날 때까지 반복 수행할 수 없으므로 진행되지 못한다.
		//5. System.out.println(rs.getString("empId") + " / " + rs.getString("empName")); 문장에서 empId와 empName 컬럼이 존재하지 않으므로 해당 컬럼에 접근할 수 없다.

	}	//1. /kh추가하여 데이터베이스를 연결
		//2. String query = "select emp_id emp_name from employee";(빈 줄에 query에 대한 sql문을 작성)
}		//3. executeQuery()메소드로 변경
		//4. while(rs.next())로 변경
		//5. empid를 emp_id로 수정/empname을 emp_name으로 수정