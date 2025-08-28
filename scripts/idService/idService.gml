function setId()
{
    var tempId = -1;
    
    do
    {
        randomize();
        tempId = irandom_range(100000, 999999);
    }
    until (!array_contains(global.IDs, tempId))
        
    return tempId;
}