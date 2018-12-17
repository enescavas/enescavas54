#include<iostream>
#include<fstream>
#include<iomanip>
#include<conio.h>
#include<stdlib.h>
#include<locale.h>
#include<cstring>
#include<windows.h>

#include<cctype>


using namespace std;
class Hasta
{
	public:
		string	Tc_No;
		string	Ad;
		string	Soyad;
		string	Kayit_No;
		string	Telefon;
		string	Dogum_Tarihi;
		fstream	dosya,duzeltme,silme;
		
		
		void	Hasta_Listesi_Alma(string tcno)
		{
			dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			while(!dosya.eof())
			{
				dosya>>Tc_No;
				dosya>>Ad;
				dosya>>Soyad;
				dosya>>Kayit_No;
				dosya>>Telefon;
				dosya>>Dogum_Tarihi;
				
				if(Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<Tc_No<<setw(10)<<Ad<<setw(10)<<Soyad<<setw(20)<<Telefon<<endl;	
				}
				
			}
			dosya.close();
		}
		
		void Hasta_Kaydi()
		{
			dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			dosya.setf(ios::left);
			cout<<"--Hasta Bilgileri--"<<endl;
			cout<<"Tc Kimlik Numaras� Giriniz:";
			cin>>Tc_No;
			cout<<endl<<"Hasta Ad�:";
			cin>>Ad;
			cout<<endl<<"Hasta Soyad�:";
			cin>>Soyad;
			cout<<endl<<"Kayit No:";
			cin>>Kayit_No;
			cout<<endl<<"Hasta Telefon Numaras�:";
			cin>>Telefon;
			cout<<endl<<"Hasta Do�um Tarihi:";
			cin>>Dogum_Tarihi;
			dosya<<setw(15)<<Tc_No<<setw(10)<<Ad<<setw(10)<<Soyad<<setw(5)<<Kayit_No<<setw(20)<<Telefon<<setw(10)<<Dogum_Tarihi<<endl;
			dosya.close();	
		}
		void Hasta_Kaydi_Duzeltme(string tcno)
		{
			dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			dosya.setf(ios::left);
			string d_tc,d_ad,d_soyad,d_no,d_tel,d_dogum;
			duzeltme.open("duzeltme.txt",ios::out|ios::in|ios::app);
			duzeltme.setf(ios::left);
			
			cout<<"--Hasta Bilgileri--"<<endl;
			cout<<"Tc Kimlik Numaras� Giriniz:";
			cin>>d_tc;
			cout<<endl<<"Hasta Ad�:";
			cin>>d_ad;
			cout<<endl<<"Hasta Soyad�:";
			cin>>d_soyad;
			cout<<endl<<"Kayit No:";
			cin>>d_no;
			cout<<endl<<"Hasta Telefon Numaras�:";
			cin>>d_tel;
			cout<<endl<<"Hasta Do�um Tarihi:";
			cin>>d_dogum;
			
			while(!dosya.eof())
			{
				dosya>>Tc_No;
				dosya>>Ad;
				dosya>>Soyad;
				dosya>>Kayit_No;
				dosya>>Telefon;
				dosya>>Dogum_Tarihi;
				
				if(Tc_No!=tcno)
				{
					duzeltme<<setw(15)<<Tc_No<<setw(10)<<Ad<<setw(10)<<Soyad<<setw(5)<<Kayit_No<<setw(20)<<Telefon<<setw(10)<<Dogum_Tarihi<<endl;	
				}
				else if(Tc_No==tcno)
				{
					duzeltme<<setw(15)<<d_tc<<setw(10)<<d_ad<<setw(10)<<d_soyad<<setw(5)<<d_no<<setw(20)<<d_tel<<setw(10)<<d_dogum<<endl;
				}
			}
			dosya.close();
			duzeltme.close();

			remove("Hasta.txt");
			rename("duzeltme.txt","Hasta.txt");
		}
		void	Hasta_Silme(string tcno)
		{
			dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			dosya.setf(ios::left);
			silme.open("silme.txt",ios::out|ios::in|ios::app);
			silme.setf(ios::left);
			
		do
			{
				dosya>>Tc_No;
				dosya>>Ad;
				dosya>>Soyad;
				dosya>>Kayit_No;
				dosya>>Telefon;
				dosya>>Dogum_Tarihi;
				
				if(Tc_No!=tcno)
				{
					
					silme<<setw(15)<<Tc_No<<setw(10)<<Ad<<setw(10)<<Soyad<<setw(5)<<Kayit_No<<setw(20)<<Telefon<<setw(10)<<Dogum_Tarihi<<endl;	
				}
				
			}	while(!dosya.eof());
			dosya.close();
			silme.close();

			remove("Hasta.txt");
			rename("silme.txt","Hasta.txt");
			
		}
};

class Randevu
{
	public:
		string	TC;
		string	Tarih;
		string	Saat;
		string	Doktor_Adi;
		string	Teshis;
		string	Ilaclar;
		string	Tahliller;
		Hasta	hasta;
		fstream dosya2,silme2,guncelle,muayene;
		
		
		
		
		void	Hasta_Sorgulama(string tcno)
		{
			dosya2.open("randevu.txt",ios::out|ios::in|ios::app);
			hasta.dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			while(!hasta.dosya.eof())
			{
				hasta.dosya>>hasta.Tc_No;
				hasta.dosya>>hasta.Ad;
				hasta.dosya>>hasta.Soyad;
				hasta.dosya>>hasta.Kayit_No;
				hasta.dosya>>hasta.Telefon;
				hasta.dosya>>hasta.Dogum_Tarihi;
				if(hasta.Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<hasta.Tc_No<<setw(10)<<hasta.Ad<<setw(10)<<hasta.Soyad<<setw(5)<<hasta.Kayit_No<<setw(20)
					<<hasta.Telefon<<setw(10)<<hasta.Dogum_Tarihi<<endl;
				}
			}
			while(!dosya2.eof())
			{
				dosya2>>TC;
				dosya2>>Tarih;
				dosya2>>Saat; 
				dosya2>>Doktor_Adi;
				dosya2>>Teshis;
				dosya2>>Ilaclar;
				dosya2>>Tahliller;
				
				if(TC==tcno)
				{
					cout<<"Randevu Bilgileri"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;	
				}
			}
			dosya2.close();
			hasta.dosya.close();
			
			
		}
		void	Randevu_Guncelleme()
		{
			dosya2.open("randevu.txt",ios::out|ios::in|ios::app);
			dosya2.setf(ios::left);
			guncelle.open("randevuguncelle.txt",ios::out|ios::in|ios::app);
			guncelle.setf(ios::left);
			string tcno;
			cout<<"Randevusu g�ncellenecek hastan�n Tc kimlik numaras�n� giriniz:";
			cin>>tcno;
			hasta.dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			while(!hasta.dosya.eof())
			{
				hasta.dosya>>hasta.Tc_No;
				hasta.dosya>>hasta.Ad;
				hasta.dosya>>hasta.Soyad;
				hasta.dosya>>hasta.Kayit_No;
				hasta.dosya>>hasta.Telefon;
				hasta.dosya>>hasta.Dogum_Tarihi;
				if(hasta.Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<hasta.Tc_No<<setw(10)<<hasta.Ad<<setw(10)<<hasta.Soyad<<setw(5)<<hasta.Kayit_No<<setw(20)
					<<hasta.Telefon<<setw(10)<<hasta.Dogum_Tarihi<<endl;
				}
			}
			while(!dosya2.eof())
			{
				dosya2>>TC;
				dosya2>>Tarih;
				dosya2>>Saat; 
				dosya2>>Doktor_Adi;
				dosya2>>Teshis;
				dosya2>>Ilaclar;
				dosya2>>Tahliller;
				
				if(TC!=tcno)
				{
					guncelle<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;	
				}
				else if(TC==tcno)
				{
						cout<<"Yeni randevu bilgilerini giriniz"<<endl;
						cout<<"Tc Kimlik Numaras� Giriniz:";
						cin>>TC;
						cout<<endl<<"Randevu al�nacak tarihi giriniz:";
						cin>>Tarih;
						cout<<endl<<"Saati giriniz:";
						cin>>Saat;
						cout<<endl<<"Randevu al�nacak doktor ismi:";
						cin>>Doktor_Adi;
						cout<<endl<<"Te�his edilen hastal��� giriniz:";
						cin>>Teshis;
						cout<<"Kullan�lan ila�lar� giriniz:";
						cin>>Ilaclar;
						cout<<endl<<"Yap�lan tahlilleri giriniz:";
						cin>>Tahliller;
						guncelle<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
						<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;
					
				}
				
			}
			cout<<"Randevu g�ncellenmi�tir..."<<endl;
			dosya2.close();
			guncelle.close();
			hasta.dosya.close();
			remove("randevu.txt");
			rename("randevuguncelle.txt","randevu.txt");
			
		}
		
		void	Randevu_Silme()
		{
			dosya2.open("randevu.txt",ios::out|ios::in|ios::app);
			dosya2.setf(ios::left);
			silme2.open("randevusilme.txt",ios::out|ios::in|ios::app);
			silme2.setf(ios::left);
			string tcno;
			cout<<"Randevusu silinecek hastan�n Tc kimlik numaras�n� giriniz:";
			cin>>tcno;
			hasta.dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			while(!hasta.dosya.eof())
			{
				hasta.dosya>>hasta.Tc_No;
				hasta.dosya>>hasta.Ad;
				hasta.dosya>>hasta.Soyad;
				hasta.dosya>>hasta.Kayit_No;
				hasta.dosya>>hasta.Telefon;
				hasta.dosya>>hasta.Dogum_Tarihi;
				if(hasta.Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<hasta.Tc_No<<setw(10)<<hasta.Ad<<setw(10)<<hasta.Soyad<<setw(5)<<hasta.Kayit_No<<setw(20)
					<<hasta.Telefon<<setw(10)<<hasta.Dogum_Tarihi<<endl;
				}
			}
			while(!dosya2.eof())
			{
				dosya2>>TC;
				dosya2>>Tarih;
				dosya2>>Saat; 
				dosya2>>Doktor_Adi;
				dosya2>>Teshis;
				dosya2>>Ilaclar;
				dosya2>>Tahliller;
				
				if(TC!=tcno)
				{
					silme2<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;	
				}
				
			}
			cout<<"Randevu silinmi�tir..."<<endl;
			dosya2.close();
			silme2.close();
			hasta.dosya.close();
			remove("randevu.txt");
			rename("randevusilme.txt","randevu.txt");
			
		}
		
		void	Randevu_Alma()
		{
			dosya2.open("randevu.txt",ios::out|ios::in|ios::app);
			dosya2.setf(ios::left);
			string tcno;
			cout<<"Randevu al�nacak hastan�n Tc kimlik numaras�n� giriniz:";
			cin>>tcno;
			hasta.dosya.open("hasta.txt",ios::out|ios::in|ios::app);
			while(!hasta.dosya.eof())
			{
				hasta.dosya>>hasta.Tc_No;
				hasta.dosya>>hasta.Ad;
				hasta.dosya>>hasta.Soyad;
				hasta.dosya>>hasta.Kayit_No;
				hasta.dosya>>hasta.Telefon;
				hasta.dosya>>hasta.Dogum_Tarihi;
				if(hasta.Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<hasta.Tc_No<<setw(10)<<hasta.Ad<<setw(10)<<hasta.Soyad<<setw(5)<<hasta.Kayit_No<<setw(20)
					<<hasta.Telefon<<setw(10)<<hasta.Dogum_Tarihi<<endl;
				}	
			/*else
				{
					cout<<"ilgili hasta kay�tlarda bulunamad�..."<<endl<<"Yeni kayit giriniz..."<<endl;
					hasta.Hasta_Kaydi();
				}*/
			}
			cout<<"Randevu bilgilerini giriniz"<<endl;
			cout<<"Tc Kimlik Numaras� Giriniz:";
			cin>>TC;
			cout<<endl<<"Randevu al�nacak tarihi giriniz:";
			cin>>Tarih;
			cout<<endl<<"Saati giriniz:";
			cin>>Saat;
			cout<<endl<<"Randevu al�nacak doktor ismi:";
			cin>>Doktor_Adi;
			cout<<endl<<"Te�his edilen hastal��� giriniz:";
			cin>>Teshis;
			cout<<"Kullan�lan ila�lar� giriniz:";
			cin>>Ilaclar;
			cout<<endl<<"Yap�lan tahlilleri giriniz:";
			cin>>Tahliller;
			dosya2<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;
			hasta.dosya.close();
			dosya2.close();
		}
		void	Hasta_Muayene_Kaydi(string tcno)
		{
			dosya2.open("randevu.txt",ios::out|ios::in|ios::app);
			dosya2.setf(ios::left);
			muayene.open("muayene.txt",ios::out|ios::in|ios::app);
			muayene.setf(ios::left);
			string y_doktor,y_teshis,y_ilaclar,y_tahliller;
			while(!hasta.dosya.eof())
			{
				hasta.dosya>>hasta.Tc_No;
				hasta.dosya>>hasta.Ad;
				hasta.dosya>>hasta.Soyad;
				hasta.dosya>>hasta.Kayit_No;
				hasta.dosya>>hasta.Telefon;
				hasta.dosya>>hasta.Dogum_Tarihi;
				if(hasta.Tc_No==tcno)
				{
					cout<<"�lgili hasta kay�tlarda bulundu"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<hasta.Tc_No<<setw(10)<<hasta.Ad<<setw(10)<<hasta.Soyad<<setw(5)<<hasta.Kayit_No<<setw(20)
					<<hasta.Telefon<<setw(10)<<hasta.Dogum_Tarihi<<endl;
				}
			}
			while(!dosya2.eof())
			{
				dosya2>>TC;
				dosya2>>Tarih;
				dosya2>>Saat; 
				dosya2>>Doktor_Adi;
				dosya2>>Teshis;
				dosya2>>Ilaclar;
				dosya2>>Tahliller;
				
				if(TC==tcno)
				{
					cout<<"Randevu Bilgileri"<<endl;
					cout.setf(ios::left);
					cout<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;	
				}
			}
			cout<<endl<<"Randevu al�nacak doktor ismi:";
			cin>>y_doktor;
			cout<<endl<<"Te�his edilen hastal��� giriniz:";
			cin>>y_teshis;
			cout<<"Kullan�lan ila�lar� giriniz:";
			cin>>y_ilaclar;
			cout<<endl<<"Yap�lan tahlilleri giriniz:";
			cin>>y_tahliller;
			while(!dosya2.eof())
			{
				dosya2>>TC;
				dosya2>>Tarih;
				dosya2>>Saat; 
				dosya2>>Doktor_Adi;
				dosya2>>Teshis;
				dosya2>>Ilaclar;
				dosya2>>Tahliller;
				
				if(TC!=tcno)
				{
					muayene<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<Doktor_Adi<<setw(20)
					<<Teshis<<setw(10)<<Ilaclar<<setw(10)<<Tahliller<<endl;	
				}
				else if(TC==tcno)
				{
					muayene<<setw(15)<<TC<<setw(10)<<Tarih<<setw(10)<<Saat<<setw(5)<<y_doktor<<setw(20)
					<<y_teshis<<setw(10)<<y_ilaclar<<setw(10)<<y_tahliller<<endl;
				}
			}
			cout<<"Muayene Basar�yla de�i�tirildi"<<endl;
			dosya2.close();
			muayene.close();
			remove("randevu.txt");
			rename("muayene.txt","randevu.txt");
		}
		 
};
int main()
{
	setlocale(LC_ALL,"Turkish");
	Hasta hasta;
	Randevu randevu;
	string hduzeltme,hsilme,hsorgula,hliste,hmuayene;
	int secim;
	do
		{
			cout<<"-----------------------"<<endl;
			cout<<"1-Hasta Kaydi"<<endl<<"2-Hasta Kay�t D�zeltme"<<endl<<"3-Hasta Kay�t Silme"<<endl<<"4-Hasta Randevu Alma"<<
			endl<<"5-Hasta Randevu Silme"<<endl<<"6-Hasta Randevu G�ncelleme"<<endl<<"7-Hasta Sorgula"<<endl<<"8-Hasta Listele"<<endl
			<<"9-Muayene Kayd�"<<endl<<"10-��k��"<<endl;
			cout<<"-----------------------"<<endl;
			cout<<"secim giriniz..."<<endl;
			cin>>secim;
		switch(secim)
		{
			case 1:hasta.Hasta_Kaydi();break;
			case 2:cout<<"Kay�t� d�zeltilecek Hastan�n Tc Kimlik Numaras�:";cin>>hduzeltme;hasta.Hasta_Kaydi_Duzeltme(hduzeltme);break;
			case 3:cout<<"Kay�t� silinecek Hastan�n Tc Kimlik Numaras�:";cin>>hsilme;hasta.Hasta_Silme(hsilme);break;
			case 4:randevu.Randevu_Alma();break;
			case 5:randevu.Randevu_Silme();break;
			case 6:randevu.Randevu_Guncelleme();break;
			case 7:cout<<"Sorgulanacak hastan�n Tc Kimlik Numaras�n� Giriniz:";cin>>hsorgula;randevu.Hasta_Sorgulama(hsorgula);break;
			case 8:cout<<"Bilgileri ��renilecek hastan�n Tc Kimlik Numaras�n� Giriniz:";cin>>hliste;hasta.Hasta_Listesi_Alma(hliste);break;
			case 9:cout<<"Muayene Kayd� Yap�lacak hastan�n Tc Kimlik Numaras�n� Giriniz:";cin>>hmuayene;randevu.Hasta_Muayene_Kaydi(hmuayene);break;
			case 10:break;
		}
		}
		while(secim!=10);
	
}
