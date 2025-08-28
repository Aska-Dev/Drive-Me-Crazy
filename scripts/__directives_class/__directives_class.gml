function Directive(_function, _parameterArray) constructor 
{
    func = _function;
    parameters = _parameterArray;
    
    run = function ()
    {
        script_execute_ext(func, parameters)
    }
}