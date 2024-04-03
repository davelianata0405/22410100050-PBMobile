/*
tampilkan bilangan ini genap atau ganjil dengan input n<100
tugas03.dart tampilkan matrix 'x' n*n
**
**
**
 */

void main(){
  for(int i = 1; i<= 100; i++){
    if(i % 2 == 0){
      print('$i genap');
    }else {
      print('$i ganjil');
    }
  }
}