import std;

void main() {
    int N, X, Y, Z;
    readf("%d %d %d %d\n", N, X, Y, Z);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int[] res;

    auto nums = N.iota.array;

    zip(A, B, nums).sort!"a[0] == b[0] ? a[2] > b[2] : a[0] < b[0]";
    foreach (_; 0 .. X) {
        res ~= nums.back + 1;
        A.popBack, B.popBack, nums.popBack;
    }

    zip(A, B, nums).sort!"a[1] == b[1] ? a[2] > b[2] : a[1] < b[1]";
    foreach (_; 0 .. Y) {
        res ~= nums.back + 1;
        A.popBack, B.popBack, nums.popBack;
    }

    zip(A, B, nums).sort!"a[0] + a[1] == b[0] + b[1] ? a[2] > b[2] : a[0] + a[1] < b[0] + b[1]";
    foreach (_; 0 .. Z) {
        res ~= nums.back + 1;
        A.popBack, B.popBack, nums.popBack;
    }

    res.sort;

    foreach (r; res) r.writeln;
}