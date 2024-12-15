import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res = N;

    foreach (i; 0 .. N) {
        int num = A[i];
        res = max(res, num);

        foreach (j; i + 1 .. N) {
            num = min(num, A[j]);
            res = max(res, num * (j - i + 1));
        }
    }

    res.writeln;
}
