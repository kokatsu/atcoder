import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int res;
    foreach (_; 0 .. N) {
        auto S = readln.chomp.split.to!(int[]).sum;
        res = max(res, S);
    }

    res.writeln;
}
