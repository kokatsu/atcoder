import std;

void main() {
    int N;
    readfln("%d", N);

    int[] H = readln.chomp.split.to!(int[]);

    int res, M;
    foreach (h; H) {
        if (h > M) {
            ++res;
        }

        M = max(M, h);
    }

    res.writeln;
}
