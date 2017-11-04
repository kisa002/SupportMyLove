///move_contact_solids(gravity dir,maxspd)
var i;
if argument0=1{i=argument1}else{i=0}
repeat(abs(floor(argument1))){
    if place_free(x,y+(argument0*i)){
        y+=(argument0*i)
        break
    
    }
    if argument0=1{i-=1*sign(argument1)}
    else{i+=1*sign(argument1)}
}