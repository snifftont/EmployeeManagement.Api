using EmployeeManagement.Models;

namespace EmployeeManagement.Api.Models
{
    public interface IEmployeeRepository
    {
        Task<IEnumerable<Employee>> GetEmployees();
        Task<Employee> GetEmployee(int employeeID);
        Task<Employee> AddEmployee(Employee employee);
        Task<Employee> UpdateEmployee(Employee employee);
        void DeleteEmployee(int employeeID);
    }
}
