import std;

struct Params {
    int number, value;
}

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto C = readln.chomp.split.to!(int[]);
    auto R = readln.chomp.split.to!(int[]);

    RedBlackTree!(Params, "a.value > b.value")[int] rbts;
    foreach (i; 0 .. N) {
        if (C[i] in rbts) {
            rbts[C[i]].insert(Params(i + 1, R[i]));
        }
        else {
            rbts[C[i]] = [Params(i + 1, R[i])].redBlackTree!("a.value > b.value");
        }
    }

    int res = rbts[C[0]].front.number;
    if (T in rbts) {
        res = rbts[T].front.number;
    }

    res.writeln;
}
