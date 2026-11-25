if countdown <= 0 {
instance_create(random_range(x - 32, x + 32),y, obj_bubble);
countdown = 7
}

countdown -=1;