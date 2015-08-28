
require_relative "models/trip.rb"
require_relative "models/calculator.rb"
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    redirect '/choose_route'
  end
  get '/choose_route' do
    erb :userpage
  end

  post '/results' do
    trips_hash = {
      :trip1 => Trip.new("Grand_Central", "Columbus_Circle", 15, "Take Train S until times square, it will be your 2nd stop. Then take the 1 Train until Columbus Circle. It will be your 2nd stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m24!1m8!1m3!1d24176.771358374255!2d-73.982888!3d40.759904!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x89c25a21fb011c85%3A0x37513b7f1821408b!2sGrand+Central+Terminal%2C+89+East+42nd+Street%2C+New+York%2C+NY+10017!3m2!1d40.7527262!2d-73.9772294!4m5!1s0x89c258f63c9804b5%3A0xacca5e3d4112d7eb!2sColumbus+Cir%2C+New+York%2C+NY!3m2!1d40.7680441!2d-73.9823722!5e0!3m2!1sen!2sus!4v1440775472323" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),

      :trip2 => Trip.new("Grand_Central", "Union Square", 15, "Take Train 5 until Union square. It will be your 4th stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d12091.308600466207!2d-73.9932712842674!3d40.74382878262291!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x89c259022019546b%3A0x7a3232a634272cc9!2sGrand+Central+Terminal%2C+New+York%2C+NY!3m2!1d40.752998!2d-73.97705599999999!4m5!1s0x89c259989e14aa8b%3A0xcd00afc9db20caa4!2sUnion+Square%2C+New+York%2C+NY!3m2!1d40.7358633!2d-73.9910835!5e0!3m2!1sen!2sus!4v1440770750276" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),

      :trip3 => Trip.new("George_Washington_Bus_Station", "Union Square", 36, "Take the A train until 14th street. It will be your 19th stop. Take the L train until Union Square. It will be your 2nd stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d31879.914741899902!2d-73.97372490943714!3d40.804737211741596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x89c2f6a06a80ac07%3A0x58f4e654a9572870!2sGeorge+Washington+Bridge+Bus+Station%2C+4211+Broadway%2C+New+York%2C+NY+10033!3m2!1d40.848857699999996!2d-73.93831329999999!4m5!1s0x89c259989e14aa8b%3A0xcd00afc9db20caa4!2sUnion+Square%2C+New+York%2C+NY!3m2!1d40.7358633!2d-73.9910835!5e0!3m2!1sen!2sus!4v1440770239434" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),

      :trip4 => Trip.new("72nd_Street_Station", "NYU", 22, "Take the M Train until 34th Street Union square. It will be your 4th stop.Take the NQR to 8th street. It will be your 4th stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d40898.773728892214!2d-73.98858848132801!3d40.75517363773132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x89c256598d232339%3A0xda8b85263f93969e!2sBroadway!3m2!1d40.7818015!2d-73.9811689!4m5!1s0x89c2599af55395c1%3A0xda30743171b5f305!2sNew+York+University%2C+New+York%2C+NY!3m2!1d40.729513399999995!2d-73.9964609!5e0!3m2!1sen!2sus!4v1440771142961" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>'),

      :trip5 => Trip.new("Greenwich_village", "50th street station", 12, "Take the 1 Train until 50th Street . It will be your 7th stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d3480.7868560117463!2d-74.00331357765283!3d40.735453088699124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x89c259940c3213a7%3A0x8882c42182df455f!2sGreenwich+Village%2C+New+York%2C+NY!3m2!1d40.7335719!2d-74.0027418!4m5!1s0x89c25856e4201209%3A0xaca865acdc545349!2sW+50th+St%2C+New+York%2C+NY!3m2!1d40.7627781!2d-73.9872089!5e0!3m2!1sen!2sus!4v1440779425266" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
  }
    start=params[:start_location].upcase
    dest=params[:destination_location].upcase
    @trip_time=return_trip_time(start, dest, trips_hash)
    @return_route=return_route(start, dest, trips_hash)
    @map=return_map(start, dest, trips_hash)
    if trips_hash[:trip1]
      @trip_is = "trip1"
    elsif trips_hash[:trip2]
      @trip_is = "trip2"

    end
    erb :subway_results
  end
  post '/choose_route' do
    redirect '/choose_route'
  end

end
