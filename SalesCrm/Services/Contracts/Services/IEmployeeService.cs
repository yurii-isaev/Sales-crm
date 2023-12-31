using SalesCrm.Domains.Entities;
using SalesCrm.Services.Input;

namespace SalesCrm.Services.Contracts.Services;

public interface IEmployeeService
{
    Task<Employee> CreateEmployeeAsync(EmployeeDto employeeDto);
    Task<IEnumerable<EmployeeDto>> GetEmployeeListAsync();
    Task<EmployeeDto> GetEmployeeByIdAsync(Guid id);
    Task UpdateEmployeeAsync(EmployeeDto employeeDto);
    Task DeleteEmployeeByIdAsync(Guid employeeId);
    
    Task<decimal> GetUnionFree(Guid id);
}
