import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] H = readln.chomp.split.to!(int[]);

    int res;
    foreach (h; H) {
        if (M < h) {
            break;
        }

        M -= h;
        ++res;
    }

    res.writeln;
}
