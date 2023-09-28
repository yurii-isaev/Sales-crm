using SalesCrm.Domains.Entities;
using SalesCrm.Services.Contracts;

namespace SalesCrm.Services;

public class EmployeeService
{
    private readonly IEmployeeRepository _repository;

    public EmployeeService(IEmployeeRepository repo)
    {
        _repository = repo;
    }

    public async Task<Employee> CreateEmployeeAsync(Employee employee)
    {
        try
        {
            return await _repository.CreateEmployeeAsync(employee);
        }
        catch (Exception ex)
        {
            return null!;
        }
    }
    
    public async Task<IEnumerable<Employee>> GetEmployeeListAsync()
    {
        try
        {
            return await _repository.GetEmployeeListAsync();
        }
        catch (Exception ex)
        {
            return Enumerable.Empty<Employee>();
        }
    }
}