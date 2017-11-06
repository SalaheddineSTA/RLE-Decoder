void decodage(String codage)
{
  String decode[]= splitTokens(codage,"H ");
  delay(600);

  int k=0,j=0,unhexa=0,cc=0;
  
  while(k<decode.length){
    unhexa=unhex(decode[k]);
    if(unhexa>=32768) 
    {
      unhexa-=32768;
      
       k++;
      for(int i=0;i<unhexa;i++){
       cc=unhex(decode[k]);
       if(cc==255) cc=1;
       else cc=0;     
       matdecode[j%w][j/w]=cc; 
       j++;
      }
      
    }
    else
    {  
      int h=0;
     for(h=0;h<unhexa;h++){
        k++;
      cc=unhex(decode[k]);
      if(cc==255) cc=1;
      else cc=0;
       matdecode[j%w][j/w]=cc;
       j++;
    }
    
    }
    k++;
  }
     bb=false; 
}