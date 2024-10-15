import pyshark

def analyze_capture(file):
    capture = pyshark.FileCapture(file)

    for packet in capture:
        if 'telnet' in packet:
            print(f'Telnet Packet: {packet.telnet}')

        if 'ssh' in packet:
            print(f'SSH Packet: {packet.ssh}')

if __name__ == "__main__":
    analyze_capture('TELNET/telnet_capture.pcap')
    analyze_capture('SSH/ssh_capture.pcap')
