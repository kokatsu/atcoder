import std;

void main() {
    int N;
    readf("%d\n", N);

    auto D = readln.chomp.split.to!(int[]);

    int res;
    foreach (i, d; D) {
        foreach (j; 1 .. d + 1) {
            string S = format("%d%d", i + 1, j);
            if (S.all!(x => x == S[0])) {
                ++res;
            }
        }
    }

    res.writeln;
}
