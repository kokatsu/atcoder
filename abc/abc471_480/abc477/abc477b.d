import std;

void main() {
    int N, D;
    readfln("%d %d", N, D);

    int[] X = readln.chomp.split.to!(int[]);

    int[] R;
    foreach (i, x; X) {
        bool ok = true;

        foreach (j, y; X) {
            if (i == j) {
                continue;
            }

            if (abs(x - y) < D) {
                ok = false;
                break;
            }
        }

        if (ok) {
            R ~= i.to!int + 1;
        }
    }

    string res = format("%d\n%(%d %)", R.length, R);
    res.writeln;
}
