import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    auto a = A.sort, c = C.sort;

    long res;
    foreach (b; B) {
        auto lb = a.lowerBound(b);
        auto ub = c.upperBound(b);

        res += lb.length * ub.length;
    }

    res.writeln;
}
