import std;

void main() {
    int n;
    readfln("%d", n);

    int[] a = readln.chomp.split.to!(int[]);

    auto ok = [1, 3, 7, 9].assumeSorted;

    int res;
    foreach (v; a) {
        auto lb = ok.lowerBound(v + 1);
        res += v - lb.back;
    }

    res.writeln;
}
