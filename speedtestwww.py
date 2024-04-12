import speedtest

def speed_test():
    st = speedtest.Speedtest()
    
    try:
        servers = st.get_servers()
        st.get_best_server(servers)
    except speedtest.SpeedtestBestServerFailure:
        print("Unable to connect to servers to test latency. Please try again later.")
        return
    
    print("Testing download speed...")
    download_speed = st.download() / 10**6  # Convert bits per second to megabits per second
    print(f"Download speed: {download_speed:.2f} Mbps")
    
    print("Testing upload speed...")
    upload_speed = st.upload() / 10**6  # Convert bits per second to megabits per second
    print(f"Upload speed: {upload_speed:.2f} Mbps")

if __name__ == "__main__":
    speed_test()
