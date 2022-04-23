import std;

void main() {
    auto S = readln.chomp;

    bool[dchar] used;
    bool isOK = true, isU, isL;
    foreach (s; S) {
        if (std.uni.isUpper(s)) isU = true;
        else isL = true;

        if (s in used) isOK = false;
        used[s] = true;
    }

    writeln(isOK && isU && isL ? "Yes" : "No");
}