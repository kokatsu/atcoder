import std;

void main() {
    int N;
    readf("%d\n", N);

    auto d = readln.chomp.split.to!(int[]);

    auto s = d.sort;

    int res;
    foreach (i; 1 .. d.back + 1) {
        auto lb = s.lowerBound(i);

        if (lb.length == N / 2)
            ++res;
    }

    res.writeln;
}
