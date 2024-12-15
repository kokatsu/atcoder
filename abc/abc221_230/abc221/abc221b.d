import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);
    auto T = readln.chomp.to!(dchar[]);

    bool isOK = (S == T);
    auto len = S.length;

    dchar[] f;
    if (!isOK) {
        foreach (i; 1 .. len) {
            if (S == f ~ T[i] ~ T[i - 1] ~ T[i + 1 .. len]) {
                isOK = true;
                break;
            }
            f ~= T[i - 1];
        }
    }

    if (isOK) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
