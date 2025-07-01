var p_num, i;
p_num = parameter_count()
for (i = 0; i < p_num; i += 1)
{
    p_string[i] = parameter_string(i)
    switch p_string[i]
    {
        case "-nowindow":
            draw_enable_drawevent(0)
            break
    }

}
