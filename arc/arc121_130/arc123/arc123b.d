import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);

    A.sort;
    B.sort;
    C.sort;

    auto X = A.assumeSorted;
    auto Y = C.assumeSorted;

    ulong res;
    foreach (b; B) {
        auto lenA = X.lowerBound(b).length;
        Y = Y.upperBound(b);
        if (lenA > res && !Y.empty) {
            ++res;
            Y.popFront;
        }
    }

    res.writeln;
}
