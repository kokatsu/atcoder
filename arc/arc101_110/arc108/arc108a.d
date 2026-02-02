import std;

void main() {
    long S, P;
    readfln("%d %d", S, P);

    long R = P.to!real
        .sqrt
        .ceil
        .to!long;
    string res = "No";
    foreach (i; 1 .. R + 1) {
        if (i * (S - i) == P) {
            res = "Yes";
            break;
        }
    }

    res.writeln;
}
