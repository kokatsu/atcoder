import std;

void main() {
    int Q;
    readfln("%d", Q);

    int volume;
    bool isPlaying;
    string[] R = new string[](Q);
    foreach (ref r; R) {
        int A;
        readfln("%d", A);

        if (A == 1) {
            ++volume;
        }
        else if (A == 2) {
            volume = max(0, volume - 1);
        }
        else {
            isPlaying = !isPlaying;
        }

        r = isPlaying && volume >= 3 ? "Yes" : "No";
    }

    string res = format("%-(%s\n%)", R);
    res.writeln;
}
