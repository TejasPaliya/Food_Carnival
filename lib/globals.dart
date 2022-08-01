library food_carnival.globals;
int ck = 0;
int db = 0;
int pudina=0;
int mirchi=0;
int ber=0;
int imli=0;
int spdp=0;
int pq=0;
double size=0;
List plate=[0,0,0,0];
List totalPlate=List.filled(0,List.filled(4, 0),growable: true);
int i=0;
void check()
{
  totalPlate.add([pudina,mirchi,ber,imli]);

}
void horiz()
{
  totalPlate.removeAt(pq-1);
}