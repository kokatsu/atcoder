import std;

void main() {
    long N, V;
    readfln("%d %d", N, V);

    long[] D = readln.chomp.split.to!(long[]);
    long[] T = readln.chomp.split.to!(long[]);

    long S;
    long[] R;
    foreach (i; 0 .. N - 1) {
        S += D[i];

        if (S / V < T[i]) {
            R ~= i + 2;
        }
    }

    if (R.empty) {
        R ~= -1;
    }

    string res = format("%(%d %)", R);
    res.writeln;
}
