import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split.to!(int[]);

    long res;
    foreach (s; S) {
        bool isOK;
        foreach (a; 1 .. s) {
            int l = s - 3 * a;
            if (l <= 0) {
                break;
            }

            int r = a * 4 + 3;
            if (l / r > 0 && l % r == 0) {
                isOK = true;
                break;
            }
        }

        if (!isOK) {
            ++res;
        }
    }

    res.writeln;
}
