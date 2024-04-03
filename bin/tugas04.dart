//buat function menghitung volume dan luas permukaan, serta keliling rusuk balok
void main(){

  void tampil(){
    print('');
  }

  int volume(var p, var l, var t){
    var vol;
    vol = p*l*t;
    return vol;
  }

  int luaspermukaan(var p, var l,var t){
    var lp;
    lp = 2*((p*l) + (p*t) + (l*t));
    return lp;

  }

  int keliling(var p,var l,var t){
    var kel;
    kel = 4*(p+l+t);
    return kel;
  }
  print(volume(1,2,3));
  print(luaspermukaan(4,3,2));
  print(keliling(3,3,3));
}