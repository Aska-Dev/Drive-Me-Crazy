function __archive_class() constructor 
{
    // PROPERTIES
    
    data = [];
    
    // ARCHIVE METHODS
    
    count = function ()
    {
        return array_length(data);
    }
    
    get_all = function ()
    {
        return data;
    }
    
    // DATA STORAGE METHODS
    
    add = function (element)
    {
        array_push(data, element);
    }
    
    /// @param {Array} elementArray Array of all elements to add
    add_range = function (elementArray)
    {
        for(var i = 0; i < array_length(elementArray); i++)
        {
            add(elementArray[i])
        }
    }
    
    // DATA MANIPULATION METHODS
    
    // DATA FILTERING METHODS - GENERAL
    
    // DATA FILTERING METHODS - WHERE VARIANTS
    
    where_equal = function (property_name, value)
    {
        var valid_selection = [];
        
        for(var i = 0; i < count(); i++)
        {
            if(!struct_exists(data[i], property_name))
            {
                continue;
            }
            
            if(struct_get(data[i], property_name) == value)
            {
                array_push(valid_selection, data[i]);
            }
        }
        
        return valid_selection;
    }
    
    // DATA FILTERING METHODS - FIRST VARIANTS
    
    first_equal = function (property_name, value)
    {
        for(var i = 0; i < count(); i++)
        {
            if(!struct_exists(data[i], property_name))
            {
                continue;
            }
            
            if(struct_get(data[i], property_name) == value)
            {
                return data[i];
            }
        }
    }
}