import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res, cnt, mx = A.maxElement;
    foreach (i; 2 .. mx + 1) {
        int num;
        foreach (a; A) {
            if (a % i == 0)
                ++num;
        }

        if (cnt < num)
            res = i, cnt = num;
    }

    res.writeln;
}
