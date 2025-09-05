/// @return {Struct.__archive_class}
function archive(_archiveName)
{
    // Init global archives data storage if not already done
    if(!struct_exists(global.__archives, _archiveName))
    {
        global.__archives[$ _archiveName] = new __archive_class();
    }
    
    return global.__archives[$ _archiveName];
}

function archive_initialize()
{
    global.__archives = {};
}