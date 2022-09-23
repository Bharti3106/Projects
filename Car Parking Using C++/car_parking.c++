#include<iostream>
#include<vector>
#include<windows.h>
using namespace std;

struct time
{
    int H;
    int M;
    int S;
    char col1;
    char col2;
};

struct date
{
    int D;
    int M;
    int Y;
    char sym1;
    char sym2;
};

class details
{
    string v_no;
    int type;
    date dt;
    time entry;
    time exit;

public:
    void addVehicle();
    void deleteVehicle();
    void printvehicle(details v);
    void show();

};


vector<details> park(100);
int static totalcar=0,totalbike=0,totalamt=0,i=0;

void details::addVehicle()
{
    details *v = new details;
    cout<<"Press 1 for Car and 2 for Bike : ";
    cin>>v->type;
    cout<<"Vehicle number : ";
    cin>>v->v_no;
    cout<<"Entry time in HH:MM:SS : ";
    cin>>v->entry.H>>v->entry.col1>>v->entry.M>>v->entry.col2>>v->entry.S;
    cout<<"Entry date in DD/MM/YY : ";
    cin>>v->dt.D>>v->dt.sym1>>v->dt.M>>v->dt.sym2>>v->dt.Y;

    park.at(i).v_no=v->v_no;
    park.at(i).type=v->type;
    park.at(i).entry.H=v->entry.H;
    park.at(i).entry.M=v->entry.M;
    park.at(i).entry.S=v->entry.S;
    park.at(i).dt.D=v->dt.D;
    park.at(i).dt.M=v->dt.M;
    park.at(i).dt.Y=v->dt.Y;

    i++;

    if(v->type == 1)
    {
        totalcar++;
    }
    else
    {
        totalbike++;
    }

    cout<<"\nVehicle parked"<<endl;
}

int park_time(time t1,time t2)
{
    int s1, s2, totalsec;
   time t3;
    s1 = t1.H*60*60 + t1.M*60 + t1.S;
    s2 = t2.H*60*60 + t2.M*60 + t2.S;

    totalsec = s2-s1;
    t3.M = totalsec/60;
    t3.H = t3.M/60;
    t3.M = t3.M%60;
    t3.S = totalsec%60;
   return t3.H;
}

void details:: deleteVehicle()
{
   
    string pno;
    int typ;
    time depart;
    int p_time;
    int charge=0;

    cout<<"Press 1 for Car and 2 for Bike : ";
    cin>>typ;
    cout<<"Vehicle number : ";
    cin>>pno;
    cout<<"Enter exit time in HH:MM:SS : ";
    cin>>depart.H>>depart.col1>>depart.M>>depart.col2>>depart.S;


    for(int j=0;j<=i;j++)
    {
        if((park.at(j).v_no==pno)&&(park.at(j).type==typ))
        {
            park.at(j).exit.H=depart.H;
            park.at(j).exit.M=depart.M;
            park.at(j).exit.S=depart.S;

            p_time=park_time(park.at(j).entry,depart);

            if(park.at(j).type== 1)
            {
                totalcar--;
                if(p_time<2)
                {
                    charge=20;
                }
                else
                {
                    if((p_time>2) && ((p_time<5)))                          {
                            charge=40;
                        }
                        else
                        {
                            charge=50;
                        }
                }

            }
            else
            {
                totalbike--;
                    if( p_time<2)
                    {
                        charge=5;
                    }
                    else
                    {
                        if((p_time>2) && ((p_time<5)))
                            {
                                charge=10;
                            }
                            else
                            {
                                charge=20;
                            }
                    }

            }

            cout<<"\nVehicle having vehicle number  : "<<park.at(j).v_no<<" has left the parking."<<endl;
            park.erase(park.begin()+j);
            i--;
            totalamt = totalamt+charge;
            break;

        }

        if(j==i)
        {
            cout<<"\nVehicle not found. "<<endl;
            cout<<"exit : "<<endl;
            deleteVehicle();
        }

    }

}


void details::printvehicle(details v)
{
    cout<<v.type<<"\t\t\t"<<v.v_no<<"\t\t\t"<<v.dt.D<<"/"<<v.dt.M<<"/"<<v.dt.Y<<"\t\t\t"<< v.entry.H<<":"<<v.entry.M<<":"<<v.entry.S<<endl;
}

void details::show()
{
    cout<<"Vehicle Type\t\tVehicle Number\t\t\tDate\t\t\tArrival Time"<<endl;
    for(int j=0;j<i;j++)
    {
        printvehicle(park[j]);
    }
}



void totalveh()
{
    cout<<"Total number of cars parked : "<< totalcar<<endl;
    cout<<"Total number of bikes parked : "<<  totalbike<<endl;
}

void totalamount()
{
    cout<<"Total Collection till now : "<<totalamt<<endl;
}


int main()
{
    int choice;
    char ans;
    system ( "cls" ) ;

  do
  {
     system ( "cls" ) ;
     cout<<"********************************************************************"<<endl;
     cout<<"                             PARKING                                "<<endl;
     cout<<"1. Vehical Entry"<<endl
         <<"2. Total number of vehicles parked"<<endl
         <<"3. Vehical Exit"<<endl
         <<"4. Total Amount"<<endl
         <<"5. Display Parked Vehicles "<<endl
         <<"6. Exit"<<endl
         <<"********************************************************************"<<endl
         <<"Enter the operation : ";
         cin>>choice;

         switch(choice)
         {
             case 1: system ( "cls" ) ;
                     cout<<"Add : "<<endl;
                     park.at(i).addVehicle();
                     break;

             case 2: system ( "cls" ) ;
                     totalveh();
                     break;

             case 3: system ( "cls" ) ;
                     cout<<"exit : "<<endl;
                     park.at(i).deleteVehicle();
                     break;

             case 4: system ( "cls" ) ;
                     totalamount();
                     break;

             case 5: system ( "cls" ) ;
                     park.at(i).show();
                     break;
             case 6: exit(0);
         }

         cout<<"\nDo you want to continue? (press y/n) : "<<endl;
         cin>>ans;
         if(ans=='n')
         {
             break;
         }
         else
         {
             continue;
         }

  }while(1);

  return 0;
}

