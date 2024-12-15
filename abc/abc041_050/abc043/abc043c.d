import std;

int round(int x, int y)
in (y != 0, "Division by zero") {
    if ((x > 0 && y > 0) || (x < 0 && y < 0)) {
        return (x + y / 2) / y;
    }
    else {
        return (x - y / 2) / y;
    }
}

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int m = round(a.sum, N);

    int res = a.map!(x => (x - m) ^^ 2).sum;
    res.writeln;
}
