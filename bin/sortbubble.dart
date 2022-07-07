import 'dart:math';

import 'package:sortbubble/sortbubble.dart' as sortbubble;

void main(List<String> arguments) {
// Random rand=Random();
// List<int> count=[12,2,52,16,8,78,3,10];
// List<int>numbers=[10];
// for(int i=0;i<numbers.length;i++){
//   numbers[i]=rand.nextInt(45);
// }
//   List<int>numbers=[count.length];
//
// print('Befor:'+'\n');
// print(numbers);
// margesort(count);
// print('After:'+'\n');
// print(numbers);
//   final seed = 100, rnd = Random(), length = 100;
//   var list =
//   List<int>.generate(length, (i) => rnd.nextInt(seed), growable: false);
//   margesort(list);
callbubblesort();

}


callbubblesort(){
  List<int>numarray=[14,33,27,35,10];
  List<int>sortb=bubblesort(numarray);
  print(sortb);
}
bubblesort(List<int>array){
  int larray=array.length;
  for(int i=0;i<larray-1;i++){
    for(int j=0;j<larray-1-i;j++){
      if(array[j]>array[j+1]){
        int swap=array[j];
        array[j]=array[j+1];
        array[j+1]=swap;
      }

    }
  }
  return array;
}
selection(List<int>arrays){
  int larray=arrays.length;
  for(int i=0;i<larray-1;i++){
    int lastsmall=i;
    for(int j=i+1;j<larray;j++){
      if(arrays[j]<arrays[lastsmall]){
        lastsmall=j;

      }

    }

    int swaps=arrays[i];
    arrays[i]=arrays[lastsmall];
    arrays[lastsmall]=swaps;
  }
  return arrays;
}
callselectionSort(){
  List<int> narray=[22,4,38,1,11];
  List<int>sorts=selection(narray);
  print(sorts);
}

margesort(List<int>arrays){
  int larray=arrays.length;
  if(larray<2)return;
  int minindex=larray~/2;
  List<int>left=[minindex];
  List<int>right=[larray-minindex];
  for(int i=0;i<minindex;i++){
    left[i]=arrays[i];
  }
    for(int j=minindex;j<larray;j++){
      right[j-minindex]=arrays[j];
    }
    margesort(left);
    margesort(right);
      marge(arrays,left,right);
      return arrays;

}
marge(List<int> array,List<int> listleft,List<int> rightlist){
  int l_left=listleft.length;
  int l_right=rightlist.length;
  int i=0;
  int j=0;
  int n=0;
  while(i<l_left&&j<l_right){
    if(listleft[i]<=rightlist[j]){
      array[n]=listleft[i];
      i++;
    }else{
      array[n]=rightlist[j];
      j++;
    }
    n++;
  }
while(i<l_left){
    array[n]=listleft[i];
    i++;
    n++;
}
  while(j<l_right){
    array[n]=rightlist[j];
    j++;
    n++;
  }
  return array;
}