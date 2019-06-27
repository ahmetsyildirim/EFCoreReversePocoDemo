using System;

namespace EFCoreReversePocoDemo.App
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("EF Core Reverse POCO Demo");


            using (var ctx = new MyDbContext())
            {
                //Printing Hotels
                Console.WriteLine("\nAll Hotels:");
                foreach (var hotel in ctx.Hotels)
                {
                    Console.WriteLine($"Hotel: {hotel.HotelName}");
                }

                //Printing Rooms
                Console.WriteLine("\nAll Rooms:");
                foreach (var room in ctx.Rooms)
                {
                    Console.WriteLine($"Room: {room.RoomDescription}");
                }


                //Calling Stored Proc
                Console.WriteLine("\nSearch Results:");
                var searchResult = ctx.SearchHotel("beach");
                foreach (var item in searchResult)
                {
                    Console.WriteLine($"Hotel: {item.HotelName} Room: {item.RoomNumber} Price: {item.Price} IsAvaliable: {item.IsAvaliable}");
                }
            }

            Console.ReadKey();
        }
    }
}
