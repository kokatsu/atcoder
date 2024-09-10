import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto A = S.map!(a => a - '0').array;

    foreach (i; 0 .. 1 << 3) {
        int sum = A[0];
        string res = A[0].to!string;
        foreach (j; 0 .. 3) {
            if (i & (1 << j)) {
                sum += A[j+1];
                res ~= "+";
            } else {
                sum -= A[j+1];
                res ~= "-";
            }
            res ~= A[j+1].to!string;
        }

        if (sum == 7) {
            res ~= "=7";
            res.writeln;
            return;
        }
    }
}