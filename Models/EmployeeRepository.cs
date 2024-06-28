using EmployeeManagement.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

namespace EmployeeManagement.Api.Models
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly AppDbContext appDbContext;

        public EmployeeRepository( AppDbContext appDbContext)
        {
            this.appDbContext = appDbContext;
        }
        public async Task<Employee> AddEmployee(Employee employee)
        {
            var result=await appDbContext.Employees.AddAsync(employee);
            await appDbContext.SaveChangesAsync();
            return result.Entity;
        }

        public async void DeleteEmployee(int employeeID)
        {
            var result= await appDbContext.Employees.FirstOrDefaultAsync(e=>e.EmployeeId==employeeID);
            if (result != null)
            {
                appDbContext.Employees.Remove(result);
                await appDbContext.SaveChangesAsync();
            }
        }

        public async Task<Employee> GetEmployee(int employeeID)
        {
            return await appDbContext.Employees.FirstOrDefaultAsync(e => e.EmployeeId == employeeID);
        }

        public async Task<IEnumerable<Employee>> GetEmployees()
        {
            return await appDbContext.Employees.ToListAsync();
        }

        public async Task<Employee> UpdateEmployee(Employee employee)
        {
            var result= await appDbContext.Employees.FirstOrDefaultAsync(e=>e.EmployeeId == employee.EmployeeId);
            if(result!=null)
            {
                result.FirstName = employee.FirstName;
                result.LastName = employee.LastName;
                result.Email = employee.Email;
                result.DateOfBirth = employee.DateOfBirth;
                result.Gender = employee.Gender;
                result.DepartmentId = employee.DepartmentId;
                result.PhotoPath = employee.PhotoPath;
                await appDbContext.SaveChangesAsync();
                return result;
            }
            return null;
        }
    }
}
