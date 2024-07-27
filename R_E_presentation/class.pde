vector [][] b =new vector[3][3];
public class vector {
    private float[] vec=new float [3];
    private float x;
    private float y;
    private float z;
    public vector() {this.x = 0;this.y = 0;this.z=0;this.vec[0]=0;this.vec[1]=0;this.vec[2]=0;}
    public vector(float x1,float y1,float z1) {this.x = x1;this.y = y1;this.z=z1;this.vec[0]=x;this.vec[1]=y;this.vec[2]=z;}
    public float norm(vector v) { println("놈 ",v.x,v.y,v.z);return sqrt(v.x*v.x+v.y*v.y+v.z*v.z); }
    public void displayvector() {System.out.println(this);}
    public vector BS(float u, float v){
    vector BS= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BS=plus(BS,mul(b[i][j],B(i, u)*B(j, v)));return BS;}
    public vector BSu(float u, float v){
    vector BSu= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSu=plus(BSu,mul(b[i][j],Bt(i, u)*B(j, v)));return BSu;}
    public vector BSv(float u, float v){
    vector BSv= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSv=plus(BSv,mul(b[i][j],B(i, u)*Bt(j, v)));return BSv;}
    public vector zerovec() {
        vector temp = new vector(0,0,0);
        return temp;}
    public float vectori(int i){return this.vec[i];}
    public vector(float[] temp) { this.vec[0] = temp[0];this.vec[1] = temp[1];this.vec[2] = temp[2];}
    public vector plus(vector A,vector B) {float[] temp = this.zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] =  A.vectori(i) + B.vec[i];}return new vector(temp);}
    public vector minus(vector A,vector B) {float[] temp = zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] = -A.vectori(i) + B.vec[i];}return new vector(temp);}
    public vector mul(vector A,float c) {float[] temp = zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] = A.vectori(i)*c;}return new vector(temp);}
    public float[] getvector() {return this.vec;}}
public boolean vectorequal(vector A, vector B) {if (A.x == B.x && A.y == B.y && A.z == B.z) {return true;}else {return false;}}
public vector  plus(vector A, vector B) {
        float[] temp = new float[3];float[] tempA = A.getvector();float[] tempB = B.getvector();
        for (int i = 0; i < 3; i++){temp[i] = tempA[i] + tempB[i];}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}
public vector  minus(vector A, vector B) {
        float[] temp = new float[3];float[] tempA = A.getvector();float[] tempB = B.getvector();
        for (int i = 0; i < 3; i++){temp[i] = tempA[i] - tempB[i];}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}
public vector  mul(vector A, float c) {
        float[] temp = new float[3];float[] tempA = new float[3];
        tempA[0]=A.getvector()[0];
        tempA[1]=A.getvector()[1];
        tempA[2]=A.getvector()[2];
        for (int i = 0; i < 3; i++){temp[i] = tempA[i]*c;}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}  
public vector BS(float u, float v){
    vector BS= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BS=plus(BS,mul(b[i][j],B(i, u)*B(j, v)));return BS;}
public vector BSu(float u, float v){
    vector BSu= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSu=plus(BSu,mul(b[i][j],Bt(i, u)*B(j, v)));return BSu;}
public vector BSv(float u, float v){
    vector BSv= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSv=plus(BSv,mul(b[i][j],B(i, u)*Bt(j, v)));return BSv;}
public float norm(vector v) { return sqrt(v.x*v.x+v.y*v.y+v.z*v.z); }
float B(int i, float t){if(i==0) {return (float)(1-t)*(1-t);}else if(i==1) {return 2*t*(1-t);}else {return t*t;}}
float Bt(int i,float t){if(i==0) {return 2*(t-1);}else if(i==1) {return 2*(1-2*t);}else {return 2*t;}}


public class ArrayStack {
  private int top;
  private int stackSize;
  private float stackArr[][];
  public ArrayStack(int stackSize) {
    top = -1;  
    this.stackSize = stackSize; 
    stackArr = new float[this.stackSize][3];} //생성자
  public boolean isEmpty() {return (top == -1);}
  public boolean isFull()  {return (top == this.stackSize-1);}
  public int arraysize() {return top;}
  public float ix(int k) {return stackArr[k][0];}
  public float iy(int k) {return stackArr[k][1];}
  public float iz(int k) {return stackArr[k][2];}
  public void push(float x, float y, float z) {
    if (isFull()) {/*println("스택이 다 찼잖니!!!!");*/} 
    else {++top;stackArr[top][0] = x;stackArr[top][1] = y;stackArr[top][2] = z;}}
  public void pop() {
    if (isEmpty()) {/*println("Deleting fail! Stack is empty!");*/} 
    else {/*println("Deleted Item : " + stackArr[top][0]+ " "+stackArr[top][1]+" "+stackArr[top][2]);*/top--;}}
  public void clear() {
    if (isEmpty()) {/*println("Stack is already empty!");*/} 
    else {top = -1;stackArr = new float[this.stackSize][3];/*println("Stack is clear!");*/}}
  public void printStack() {
    if (isEmpty()) {/*println("Stack is empty!");*/} 
    else {print("Bst elements : ");
      for (int i=0; i<=top; i++) {/*println(stackArr[i][0]+ " "+stackArr[i][1]+" "+stackArr[i][2]+ " ");*/point3D_RGB(stackArr[i][0],stackArr[i][1],stackArr[i][2],255,0,0,2,size);}
      println();}}
}
