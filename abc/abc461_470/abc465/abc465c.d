import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    int[] L, R;
    bool isReverse;
    foreach (i, s; S) {
        if (isReverse) {
            L ~= i.to!int + 1;
        }
        else {
            R ~= i.to!int + 1;
        }

        if (s == 'o') {
            isReverse = !isReverse;
        }
    }

    int[] A;
    if (isReverse) {
        R.reverse;
        A = R ~ L;
    }
    else {
        L.reverse;
        A = L ~ R;
    }

    string res = format("%(%d %)", A);
    res.writeln;
}
