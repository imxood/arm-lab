void itoa(char* buf, int num){

    int i=9;
    int temp = 0;
    buf[0]='0';
    buf[1]='x';

    do{
        temp = num%16;
        if(temp < 10){
            *(buf+i) = temp+48;
        }else{
            *(buf+i) = temp+55;
        }
        i--;
    }while((num /= 16));

    do{
        *(buf+i--) = '0';
    }while(i>1);

    buf[10] = 0;

}
