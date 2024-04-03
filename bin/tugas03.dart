void main(){
  int n=2;
  int m=3;
  for(int i=0; i<n+1; i++){
    String matrix = '';
    for(int j = 1; j < m; j++){
      matrix += '*';
    }
    print(matrix);
  }
}