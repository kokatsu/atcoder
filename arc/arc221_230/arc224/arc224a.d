import std;

void main() {
    int T;
    readfln("%d", T);

    long[] R = new long[](T);
    foreach (ref r; R) {
        long K;
        readfln("%d", K);

        long n = K;
        foreach (i; 0 .. 100) {
            string s = n.to!string;
            if (s.canFind("00")) {
                break;
            }
            n += K;
        }

        r = n;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
