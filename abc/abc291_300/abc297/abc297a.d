import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto T = readln.chomp.split.to!(int[]);

    int res = -1;
    foreach (i; 1 .. N) {
        if (T[i] - T[i - 1] <= D) {
            res = T[i];
            break;
        }
    }

    res.writeln;
}
