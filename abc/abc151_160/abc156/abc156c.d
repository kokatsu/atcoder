import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    X.sort;

    int l = X.front, r = X.back + 1;
    int res = int.max;
    foreach (i; l .. r) {
        int num;
        foreach (x; X) {
            num += (x - i) ^^ 2;
        }

        res = min(res, num);
    }

    res.writeln;
}
